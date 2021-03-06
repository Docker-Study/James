import { CacheModule, Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import * as redisStore from 'cache-manager-ioredis';

@Module({
  imports: [CacheModule.register({
    store: redisStore,
    host: 'james_redis',
    post: 6379,
  })],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
