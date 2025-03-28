# Make Lazy 🦥

**Automation Toolkit for Productivity-Challenged Developers**

## Installation

### 1. Add as submodule
```bash
git submodule add https://github.com/effelima/make-lazy.git infra/make-lazy
```

### 2. Create symlink (run from project root)

```bash
ln -s infra/make-lazy/Makefile Makefile
```

### 3. Initialize environment

```bash
make lazy-setup
```

## Lazy Commands

| Command               | Description                              | Example                              |
|-----------------------|------------------------------------------|--------------------------------------|
| `make lazy-setup`     | Full project setup (Docker + env)        | `make lazy-setup`                   |
| `make lazy-setup-docker` | Setup Docker templates only           | `make lazy-setup-docker`            |
| `make lazy-setup-env`  | Setup environment files only            | `make lazy-setup-env`               |
| `make lazy-task`       | Create feature/bugfix branches          | `make lazy-task feature ID-123 "desc"` |
| `make lazy-docker-up`  | Start containers (detached)             | `make lazy-docker-up`               |
| `make lazy-docker-down`| Stop and remove containers              | `make lazy-docker-down`             |
| `make lazy-help`       | Show all available commands             | `make lazy-help`                    |

## Recommended Workflow

1. First time setup:

```bash
git submodule update --init --recursive
make lazy-setup
```

2. Daily development:

```bash
# Create new feature branch
make lazy-task feature ID-456 "add login"

# Start services
make lazy-docker-up

# When done
make lazy-docker-down
```

## Project Structure

Automatically creates/maintains:

```bash
infra/
├── make-lazy/       # Submodule
├── docker/
│   └── docker-compose.dist.yml  # Docker template
└── envs/
    ├── dev.env      # Development environment
    ├── stage.env    # Staging environment
    └── prod.env     # Production environment

```

## Why Be Lazy?

* 🚀 75% fewer keystrokes
* 😴 More time for naps
* 🛠️ Consistent project setup
* 🔄 Works as submodule in any project
* 🎨 Colorful output (because plain text is boring)
* 🤖 Automatic env file generation

## Maintenance

Update to latest version:

```bash
git submodule update --remote infra/make-lazy
```

## Lazy Philosophy

1. All commands start with 'lazy-' to conserve energy
2. When in doubt, take a nap (the system will wait)
3. Laziness is a virtue when properly applied!

🦥 Happy lazy coding! 🛌