FROM nginx:1.25-alpine
# Add: Trivy で検出された AVD-DS-0002 脆弱性への対応 ->
# NOTE: 101 = nginx の User Id
ARG UID=101
USER $UID
# Add: Trivy で検出された AVD-DS-0002 脆弱性への対応 <-
RUN echo 'Hello GitHub Packages' > /usr/share/nginx/html/index.html
