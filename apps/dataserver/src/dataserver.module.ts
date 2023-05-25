import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';

const rootConfigModule = ConfigModule.forRoot({
  envFilePath: `../../.env`,
});

@Module({
  imports: [rootConfigModule],
  controllers: [],
  providers: [],
})
export class DataServerModule {}
