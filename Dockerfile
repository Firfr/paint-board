FROM docker.code.firfe.work/lipanski/docker-static-website:2.6.0

# 静态文件路径 /home/static
COPY ./代码 /home/static/

ENTRYPOINT ["/busybox-httpd", "-f", "-v"]
CMD [ "-p", "5139" ]

# 暴露端口
EXPOSE 5139

LABEL 原项目地址="https://github.com/LHRUN/paint-board"
LABEL 镜像制作者="https://space.bilibili.com/17547201"
LABEL GitHub主页="https://github.com/Firfr/paint-board"
LABEL Gitee主页="https://gitee.com/firfe/paint-board"

# docker buildx build --platform linux/amd64 --tag firfe/paint-board:2.0.0 --load .
# docker buildx build --platform linux/arm64 --tag firfe/paint-board:2.0.0-arm64 --load .
