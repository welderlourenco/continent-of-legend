import { NestFactory } from '@nestjs/core';
import { DataServerModule } from './dataserver.module';

async function bootstrap() {
  await NestFactory.createApplicationContext(DataServerModule);
}
bootstrap();
