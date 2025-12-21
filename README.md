# XRCE-DDS-Study

🎯 我的 XRCE-DDS 学习仓库，使用 Cursor AI 作为学习导师。

## 项目结构

```
XRCE-DDS-Study/
├── .cursorrules              # Cursor AI 导师规则
├── README.md                 # 本文件
├── build.sh                  # 构建脚本
├── pixi.toml                 # Pixi 依赖配置
│
├── Micro-XRCE-DDS/           # [submodule] eProsima 源码
├── Micro-XRCE-DDS-docs/      # [submodule] eProsima 官方文档
├── ShapesDemo/               # [submodule] ShapesDemo GUI
│
├── scripts/                  # 环境脚本
│   └── env.sh                # pixi 激活时自动设置 LD_LIBRARY_PATH
│
├── install/                  # 编译产物安装目录
│   ├── bin/                  # 可执行文件
│   └── lib/                  # 库文件
│
├── progress/                 # 学习进度追踪
│   └── tracker.md
│
└── sessions/                 # 学习会话记录
    └── SESSION-TEMPLATE.md
```

## 快速开始

### 1. 克隆仓库

```bash
# 方式 1：一次性克隆（推荐）
git clone --recursive https://github.com/Learner-Geek-Perfectionist/XRCE-DDS-Study.git

# 方式 2：分步克隆
git clone https://github.com/Learner-Geek-Perfectionist/XRCE-DDS-Study.git
cd XRCE-DDS-Study
git submodule update --init --recursive
```

> ⚠️ **注意**: 本仓库包含 Git submodule，必须使用 `--recursive` 或手动初始化 submodule，否则 `Micro-XRCE-DDS`、`Micro-XRCE-DDS-docs`、`ShapesDemo` 目录会是空的。

### 2. 环境设置

```bash
# 安装 pixi（如果未安装）
curl -fsSL https://pixi.sh/install.sh | bash

# 进入项目目录
cd ~/XRCE-DDS-Study

# 安装依赖并激活环境
pixi install
pixi shell
```

### 3. 编译源码

```bash
./build.sh              # 配置 + 编译 Micro-XRCE-DDS
./build.sh install      # 编译 + 安装（包括 ShapesDemo）
./build.sh shapesdemo   # 单独构建 ShapesDemo GUI
./build.sh clean        # 清理所有构建产物
./build.sh rebuild      # 清理后重新构建
```

### 4. 开始学习

用 Cursor 打开项目，在 Chat 中对话：

```bash
cursor ~/XRCE-DDS-Study
```

## 特殊指令

| 指令 | 功能 |
|------|------|
| `@文档 [名称]` | 打开并讲解指定的 .rst 文件 |
| `@源码 [路径]` | 查看并解释源码文件 |
| `@目录` | 显示所有可用的 .rst 文档列表 |
| `@进度` | 显示学习进度 |
| `@复习` | 复习已学内容 |
| `@练习` | 基于当前学习内容出题 |
| `@总结` | 总结本次会话 |
| `@编译` | 显示编译帮助 |
| `@示例` | 列出可运行的示例程序 |

## 推荐学习路线

### 阶段一：理论基础
1. `index.rst` → 理解整体架构
2. `introduction.rst` → XRCE-DDS 概念
3. `installation.rst` → 搭建开发环境

### 阶段二：核心概念
4. `getting_started.rst` → 快速入门
5. `client.rst` → Client API
6. `agent.rst` → Agent 配置
7. `gen.rst` → 代码生成工具

### 阶段三：深入实践
8. `transport.rst` → 传输层配置
9. 编译源码，运行示例
10. 阅读源码，理解实现

### 阶段四：高级主题
11. `p2p.rst` → 点对点通信
12. `optimization.rst` → 性能优化
13. 编写自己的应用

## 学习资源

- 📚 [官方文档](https://micro-xrce-dds.docs.eprosima.com/)
- 💻 [GitHub 源码](https://github.com/eProsima/Micro-XRCE-DDS)
- 🤖 [micro-ROS](https://micro.ros.org/)

---

*开始学习吧！在 Cursor Chat 中说 "我想开始学习 XRCE-DDS"*
