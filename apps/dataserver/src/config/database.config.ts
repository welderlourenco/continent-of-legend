import { registerAs } from "@nestjs/config";
import { join } from "path";
import { MysqlConnectionOptions } from "typeorm/driver/mysql/MysqlConnectionOptions";

interface DatabaseConfigInterface {
  mysql: MysqlConnectionOptions;
}

export default registerAs('database', (): DatabaseConfigInterface => ({
  mysql: {
    type: 'mysql',
    host: process.env.KOOL_DATABASE_HOST,
    port: +process.env.KOOL_DATABASE_PORT,
    username: process.env.KOOL_DATABASE_USERNAME,
    password: process.env.KOOL_DATABASE_PASSWORD,
    database: process.env.KOOL_DATABASE_NAME,
    synchronize: false,
    entities: [join(__dirname, '..', 'app', '**', '*.entity.{ts,js}')],
  },
}));
