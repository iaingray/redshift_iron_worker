require "redshift_iron_worker/version"
require "pg"
require "net/ssh/gateway"
require "contracts"

include Contracts

module RedshiftIronWorker

  #connect to Redshift server through SSH bastion host
  Contract String, String, String, ({:host => String, :user => String, :password => String, :dbname => String})  => PG::Connection
  def pg_ssh_connect(bastion_host, bastion_user, bastion_key_str, pg_config)
    gate = Net::SSH::Gateway.new(
      bastion_host,
      bastion_user,
      {port: 22, key_data: [bastion_key_str], keys_only: true}
    ) 

    #open connection through bastion host to server then redirect through port
    pg_config[:port] = gate.open(pg_config[:host], 5439) #accessible from bastion host
    pg_config[:host] = '127.0.0.1'

    PG::connect(pg_config)
  end
  
end
