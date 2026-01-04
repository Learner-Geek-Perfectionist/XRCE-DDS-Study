# XRCE-DDS 学习进度

## 📈 总览

| 模块 | 项目数 | 完成 | 进度 |
|------|--------|------|------|
| 📖 文档-入门 | 3 | 1 | 33% |
| 📖 文档-核心 | 4 | 2 | 50% |
| 📖 文档-高级 | 3 | 1 | 33% |
| 📜 协议规范 | 4 | 2 | 50% |
| 💻 源码阅读 | 4 | 1 | 25% |
| 🔧 实践项目 | 4 | 2 | 50% |
| 🔬 调试技能 | 4 | 4 | 100% |
| 🧠 概念理解 | 8 | 8 | 100% |
| **总计** | **34** | **21** | **62%** |

---

## 📚 文档学习状态

### 🟢 入门模块

| 文档 | 状态 | 学习日期 | 笔记 |
|------|------|----------|------|
| index.rst | ❓ 待学习 | - | - |
| installation.rst | ❓ 待学习 | - | - |
| getting_started.rst | ✅ 已掌握 | 2025-12-21 | Deployment 部分，实体与操作分离 |

### 🔵 核心模块

| 文档 | 状态 | 学习日期 | 笔记 |
|------|------|----------|------|
| client.rst | ✅ 已掌握 | 2025-12-25 | 三种实体创建模式：XML、Reference、Binary |
| agent.rst | ✅ 已掌握 | 2025-12-21 | By XML vs By Reference，agent.refs 配置 |
| gen.rst | ❓ 待学习 | - | - |
| transport.rst | ❓ 待学习 | - | - |

### 🟣 高级模块

| 文档 | 状态 | 学习日期 | 笔记 |
|------|------|----------|------|
| p2p.rst | ❓ 待学习 | - | - |
| optimization.rst | ❓ 待学习 | - | - |
| shapes_demo.rst | ✅ 已掌握 | 2025-12-21 | ShapeDemoClient 使用，write_data 命令 |

---

## 📜 XRCE 协议规范（DDS-XRCE v1.0）

| 章节 | 状态 | 学习日期 | 笔记 |
|------|------|----------|------|
| Chapter 7 - Object Model | ❓ 待学习 | - | - |
| **Chapter 8.1-8.2 - Protocol General & Definitions** | ✅ 已掌握 | 2025-01-04 | Session/Stream/Message 定义，协议设计目标 |
| **Chapter 8.3 - Message Structure** | ✅ 已掌握 | 2025-01-04 | Header/Submessage 结构，16种消息类型 |
| Chapter 8.4+ - 详细协议流程 | ❓ 待学习 | - | - |

---

## 💻 源码阅读状态

| 源码模块 | 状态 | 学习日期 | 笔记 |
|----------|------|----------|------|
| CMakeLists.txt (主项目结构) | ❓ 待学习 | - | - |
| Client 核心代码 | ❓ 待学习 | - | - |
| Agent 核心代码 | ❓ 待学习 | - | - |
| Transport 实现 | ❓ 待学习 | - | - |
| **ShapesDemo 源码** | ✅ 已掌握 | 2025-12-25 | Qt6+FastDDS，QoS 配置方式 |

---

## 🔧 实践项目

| 项目 | 状态 | 完成日期 | 笔记 |
|------|------|----------|------|
| 搭建开发环境 (pixi + cmake) | ✅ 已完成 | 2025-12-21 | pixi shell + ./build.sh |
| 编译整个项目 | ✅ 已完成 | 2025-12-21 | ./build.sh install |
| 运行 ShapesDemo 示例 | ⚠️ 待解决 | 2025-12-24 | XTypes 类型兼容性问题 |
| 编写自定义 Publisher/Subscriber | ❓ 待完成 | - | - |

---

## 🔬 调试技能

| 技能 | 状态 | 学习日期 | 笔记 |
|------|------|----------|------|
| Wireshark/tshark 抓 RTPS 包 | ✅ 已掌握 | 2025-12-24 | `sudo tshark -i lo -f "udp" -Y "rtps"` |
| 分析 DDS 发现机制 | ✅ 已掌握 | 2025-12-24 | DATA(p), DATA(w), DATA(r), HEARTBEAT, ACKNACK |
| 理解 XTypes 类型系统 | ✅ 已掌握 | 2025-12-24 | @appendable 注解，类型兼容性检查 |
| **分析 XRCE 协议报文** | ✅ 已掌握 | 2025-01-04 | 解析 CREATE_CLIENT, CREATE, STATUS 等消息 |

---

## 🧠 概念理解

| 概念 | 状态 | 学习日期 | 笔记 |
|------|------|----------|------|
| Topic 实体 vs Topic 数据 | ✅ 已掌握 | 2025-12-25 | 实体是"邮箱"，数据是"信件" |
| Topic 的类型和名称 | ✅ 已掌握 | 2025-12-25 | 名称是通道标识，类型定义数据结构 |
| XRCE 协议结构 | ✅ 已掌握 | 2025-12-25 | Session ID、Stream ID、Submessage ID |
| Agent 协议转换 | ✅ 已掌握 | 2025-12-25 | WRITE_DATA → 内部处理 → RTPS DATA |
| QoS 兼容性规则 | ✅ 已掌握 | 2025-12-25 | Publisher QoS >= Subscriber QoS |
| **Session/Stream/Message 层次** | ✅ 已掌握 | 2025-01-04 | 一个 Session 多个 Stream，每个 Stream 独立排序 |
| **ObjectId = Prefix + Kind** | ✅ 已掌握 | 2025-01-04 | 12位前缀+4位类型，类似精简版 GUID |
| **Header vs Payload 区别** | ✅ 已掌握 | 2025-01-04 | Header=路由信息，Payload=业务参数 |

---

## 📝 状态说明

- ✅ **已掌握** - 能独立解释并应用
- 🔄 **进行中** - 正在学习
- ❓ **待学习** - 尚未开始
- ⚠️ **待解决** - 遇到问题待解决

---

## 🎯 学习计划

### 本周目标
- [x] 搭建开发环境
- [x] 运行第一个示例
- [x] 理解 XRCE 协议结构
- [x] 理解 Topic 实体与数据的区别
- [x] **深入学习 XRCE 协议规范 (Chapter 8)**
- [x] **通过抓包验证协议理解**
- [ ] 解决 ShapesDemo 通信问题（XTypes 兼容性）
- [ ] 学习 transport.rst - 传输层配置
- [ ] 学习 gen.rst - 代码生成工具

### 已掌握的技能
- DDS Global Data Space 是逻辑概念，不是实际服务器
- By Reference 方式的设计哲学
- XRCE Client-Agent 架构
- 使用 Wireshark 调试 DDS/RTPS 通信
- DDS 发现机制（Participant Discovery, Endpoint Discovery）
- ShapesDemo 如何使用 Fast DDS API 创建实体
- XRCE Client 三种实体创建模式（XML、Reference、Binary）
- QoS 兼容性规则
- XRCE 消息结构分析（抓包解读）
- Topic 实体 vs Topic 数据的区别
- **XRCE 协议完整消息结构（Header + Submessages）**
- **16 种 Submessage 类型及其用途**
- **CREATE_CLIENT/STATUS_AGENT 握手流程**
- **ObjectId 的设计（Prefix + Kind）**
- **BUILTIN Stream 的作用**

### 薄弱环节
- QoS 配置的详细参数（Liveliness, Ownership 等）
- RTPS 协议的细节
- XTypes 完整类型系统
- Custom Transport 实现
- HEARTBEAT/ACKNACK 详细机制

---

## 🐛 遗留问题

### ShapesDemo 通信问题

**现象**：ShapeDemoClient → Agent → ShapesDemo GUI，数据无法到达 GUI

**排查过程**：
1. ✅ Shared Memory 问题 → 已禁用
2. ✅ Domain ID 问题 → 已添加 domainId
3. ✅ Multicast 问题 → 抓包确认发现正常
4. ✅ 端点发现 → DATA(w)/DATA(r) -> Square 成功
5. ⚠️ XTypes 类型不兼容 → **疑似根本原因**

**根本原因（推测）**：
- ShapesDemo GUI 的 ShapeType 使用 `@appendable` 注解
- Agent 创建的 ShapeType 可能没有此注解
- XTypes 严格类型检查导致匹配失败

**可能的解决方案**（未验证）：
1. 在 ShapesDemo GUI 中禁用 `Propagation of type info`
2. 修改 ShapeDemoClient 使用与 ShapesDemo 相同的类型定义
3. 向 eProsima 社区求助：https://github.com/eProsima/Micro-XRCE-DDS/issues

---

## 📊 学习统计

- **开始日期**: 2025-12-21
- **总学习天数**: 6
- **总会话数**: 4

---

## 📅 会话记录

### 会话 1（2025-12-21）
- 环境搭建，编译成功
- 学习 Deployment 模式
- 理解 By Reference 配置

### 会话 2（2025-12-24）
- Wireshark 抓包分析
- DDS 发现机制
- XTypes 类型系统

### 会话 3（2025-12-25）
- ShapesDemo 源码分析：确认使用 Qt6 + Fast DDS
- 实体创建机制：程序化 QoS 配置 vs XML
- QoS 兼容性：Publisher >= Subscriber 规则
- XRCE 三种模式：XML、Reference、Binary
- 核心概念澄清：Topic 实体 vs Topic 数据

### 会话 4（2025-01-04）🆕
- **XRCE 协议规范深度学习** (Chapter 8)
- **消息结构完整解析**:
  - Message Header (sessionId, streamId, sequenceNr, clientKey)
  - Submessage Header (submessageId, flags, submessageLength)
  - 16 种 Submessage 类型
- **抓包验证**:
  - CREATE_CLIENT → STATUS_AGENT 握手
  - 批量 CREATE（Participant, Topic, Subscriber, DataReader）
- **核心理解**:
  - Header = 路由信息（当前状态）
  - Payload = 业务参数（请求目标）
  - ObjectId = Prefix(12bit) + Kind(4bit)，类似精简版 GUID
  - BUILTIN Stream (0x01, 0x80) 自动可用

---

## 🌐 社区资源

- **GitHub Issues**: https://github.com/eProsima/Micro-XRCE-DDS/issues
- **eProsima 论坛**: https://community.eprosima.com/
- **ROS Discourse**: https://discourse.ros.org/

---

*最后更新: 2025-01-04*
