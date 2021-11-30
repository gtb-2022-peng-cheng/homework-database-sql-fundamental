import {createConnection, Connection, ConnectionConfig} from 'promise-mysql';
import * as Bluebird from 'bluebird';

function getConfiguration(): ConnectionConfig {
  return {
    host: 'localhost',
    user: 'gtb-2022-peng-cheng',
    password: 'p@ssword',
    database: 'classicmodel-gtb-2022-peng-cheng',
    port: 3306,
  };
}

export default function createMysqlConnection(): Bluebird<Connection> {
  return createConnection(getConfiguration());
}
