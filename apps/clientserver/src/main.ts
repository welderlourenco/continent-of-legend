import { ConfigModule } from '@nestjs/config';
import { NestFactory } from '@nestjs/core';
import { NestExpressApplication } from '@nestjs/platform-express';
import { ClientServerModule } from './clientserver.module';

ConfigModule.forRoot({
  envFilePath: `../../.env`,
});

async function bootstrap() {
  const app = await NestFactory.create<NestExpressApplication>(ClientServerModule);
  await app.listen(+process.env.KOOL_CLIENTSERVER_PORT);
}
bootstrap();
