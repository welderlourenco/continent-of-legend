import { ConfigModule } from '@nestjs/config';
import { join } from 'path';
import databaseConfig from 'src/config/database.config';
import { DataSource, DataSourceOptions } from 'typeorm';

// load root .env (for KOOL_ envs)
ConfigModule.forRoot({
  envFilePath: `../../.env`,
  load: [databaseConfig],
});

export const AppDataSource = new DataSource({
  ...databaseConfig().mysql,
  migrations: [join(__dirname, 'src', 'database', 'migrations', '*.{ts,js}')],
} as DataSourceOptions);
