package org.mongodb;

class Mongo
{
	var protocol : Protocol;
	
	public function new(host="localhost", port=27017)
	{
		protocol = new Protocol(host, port);
	}

	public inline function getDB(name:String) : Database
	{
		return new Database(protocol, name);
	}
	
	public inline function close()
	{
		protocol.close();
	}
}


