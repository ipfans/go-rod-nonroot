FROM ghcr.io/go-rod/rod:v0.112.8
RUN ls -ln /usr/bin/chrome && \
    mv /root/.cache/rod / && \
    rm /usr/bin/chrome && \
    ln -s /rod/browser/chromium-1101464/chrome-linux/chrome /usr/bin/chrome && \
    chmod -R 0755 /rod/browser
