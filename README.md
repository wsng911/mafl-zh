# Mafl 汉化版

> 基于 [hywax/mafl](https://github.com/hywax/mafl) 的汉化版本，简洁灵活的自托管主页仪表盘。

## 功能特性

- YAML 配置驱动，无需数据库
- 服务健康状态监控
- 多种服务小部件（天气、IP 等）
- 深色/浅色主题
- PWA 支持
- 默认中文界面

## 快速部署

```bash
docker run -d \
  -p 3000:3000 \
  -v $(pwd)/config.yml:/app/config.yml \
  --name mafl-zh \
  wsng911/mafl-zh:latest
```

访问 `http://localhost:3000`

## 国内适配

- yarn 镜像：npmmirror.com
- 默认语言：中文

## 原项目

https://github.com/hywax/mafl
