FROM goofball222/pritunl:latest

ENV ORIG_API_SERVER app.pritunl.com
ENV FAKE_API_SERVER pritunl-api.simonmicro.de
ENV ORIG_AUTH_SERVER auth.pritunl.com
ENV FAKE_AUTH_SERVER pritunl-api.simonmicro.de/auth

# This is basically the classic installer script...
RUN echo 'Rewriting pritunl api endpoint: libs' && \
    find /usr/lib/python3.9 -type f -print0 | xargs -0 sed -i "s,$ORIG_API_SERVER,$FAKE_API_SERVER_ESCAPED,g" && \
    echo 'Rewriting pritunl api endpoint: www' && \
    find /usr/share/pritunl/www/ -type f -print0 | xargs -0 sed -i "s,$ORIG_API_SERVER,$FAKE_API_SERVER_ESCAPED,g" && \
    echo 'Rewriting pritunl auth (SSO) endpoint: libs+www' && \
    find /usr/lib/python3.9 -type f -print0 | xargs -0 sed -i "s,$ORIG_AUTH_SERVER,$FAKE_AUTH_SERVER_ESCAPED,g" && \
    find /usr/share/pritunl/www/ -type f -print0 | xargs -0 sed -i "s,$ORIG_AUTH_SERVER,$FAKE_AUTH_SERVER_ESCAPED,g" && \
    echo 'Done...'
