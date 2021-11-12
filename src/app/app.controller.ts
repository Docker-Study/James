import { CacheInterceptor, CACHE_MANAGER, Controller, Get, Inject, UseInterceptors } from '@nestjs/common';
import { AppService } from './app.service';
import { Cache } from 'cache-manager';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService,
     @Inject(CACHE_MANAGER) private cacheManager: Cache) {}

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }

  // need to learn more about Redis cache
  // why it loads a cache once, and reset as null?
  @Get("/cache")
  async getCache(): Promise<string> {
    const savedTime = await this.cacheManager.get<number>('time')
    if( savedTime ){
      return "saved time : " + savedTime
    }
    const now = new Date().getTime()
    await this.cacheManager.set<number>('time',now);
    return "save new time : " + now
  }
}
