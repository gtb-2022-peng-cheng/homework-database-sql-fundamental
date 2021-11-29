import {createConnection, Connection, ConnectionConfig} from 'promise-mysql';
import * as Bluebird from 'bluebird';

function getConfiguration(): ConnectionConfig {
  return {
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'tw',
    port: 3306,
  };
}

export default function createMysqlConnection(): Bluebird<Connection> {
  return createConnection(getConfiguration());
}
