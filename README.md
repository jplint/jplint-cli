# jplint-cli

Linting CLI for JP Engineers.

- [Dependencies](#dependencies)
- [How to](#how-to)
  - [Develop](#develop)
  - [Run](#run)
  - [Lint](#lint)
  - [Test](#test)
  - [Build](#build)
  - [Distribute](#distribute)
  - [Down](#down)
- [Miscellaneous](#miscellaneous)
  - [License](#license)
  - [Contributor](#contributor)

## Dependencies

- Docker
  - docker-compose
- Go

## How to

### Develop

```shell
docker-compose up --detach --build
```

### Run

```shell
docker-compose exec app go run main.go
```

### Lint

```shell
docker-compose exec app gofmt -w .
```

### Test

```shell
docker-compose exec app go test -v -cover
```

### Build

```shell
docker-compose exec app go build -v
```

### Distribute

(T. B. D.)

### Down

```shell
docker-compose down --rmi all
```

## Miscellaneous

### License

MIT License

### Contributor

- [Shin'ichiro Suzuki](https://github.com/shin-sforzando)
- [Tomoya Kashimada](https://github.com/tomoya-sforzando)
