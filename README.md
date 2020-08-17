# jplint-cli

Linting CLI for JP Engineers.

- [Dependencies](#dependencies)
- [How to](#how-to)
  - [Develop](#develop)
    - [`docker-compose up`](#docker-compose-up)
    - [Run](#run)
    - [Format ( `gofmt` )](#format--gofmt-)
    - [Static Analysis ( `vet` )](#static-analysis--vet-)
    - [Test](#test)
    - [Build](#build)
    - [Install](#install)
    - [Distribute](#distribute)
    - [Clean](#clean)
    - [`docker-compose down`](#docker-compose-down)
- [Miscellaneous](#miscellaneous)
  - [License](#license)
  - [Contributor](#contributor)

## Dependencies

- Docker
  - docker-compose
- Go

## How to

### Develop

#### `docker-compose up`

```shell
docker-compose up --detach --build  # prezto: dkcU --build
```

#### Run

```shell
docker-compose exec cli make run  # prezto: dkce cli make run
```

#### Format ( `gofmt` )

```shell
docker-compose exec cli make fmt
```

#### Static Analysis ( `vet` )

```shell
docker-compose exec cli make vet
```

#### Test

```shell
docker-compose exec cli make test
```

#### Build

```shell
docker-compose exec cli make build
```

#### Install

```shell
docker-compose exec cli make install
```

#### Distribute

(T. B. D.)

#### Clean

```shell
docker-compose exec cli make clean
```

#### `docker-compose down`

```shell
docker-compose down --rmi all --volumes
```

## Miscellaneous

### License

MIT License

### Contributor

- [Shin'ichiro Suzuki](https://github.com/shin-sforzando)
- [Tomoya Kashimada](https://github.com/tomoya-sforzando)
