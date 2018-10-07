FROM scratch
EXPOSE 8080
ENTRYPOINT ["/ext-java-code-quality"]
COPY ./bin/ /