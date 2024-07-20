FROM nginx:1.25-alpine
# Add: Trivy で検出された AVD-DS-0002 脆弱性への対応 ->
RUN groupadd -r workgroup && useradd --no-log-init -r -g workgroup workuser
USER workuser
# Add: Trivy で検出された AVD-DS-0002 脆弱性への対応 <-
RUN echo 'Hello GitHub Packages' > /usr/share/nginx/html/index.html
