# XRCE-DDS 学习进度

## 📈 总览

| 模块 | 项目数 | 完成 | 进度 |
|------|--------|------|------|
| 📖 文档-入门 | 3 | 1 | 33% |
| 📖 文档-核心 | 4 | 2 | 50% |
| 📖 文档-高级 | 3 | 1 | 33% |
| 💻 源码阅读 | 4 | 1 | 25% |
| 🔧 实践项目 | 4 | 2 | 50% |
| 🔬 调试技能 | 3 | 3 | 100% |
| 🧠 概念理解 | 5 | 5 | 100% |
| **总计** | **26** | **15** | **58%** |

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

---

## 🧠 概念理解（2025-12-25 新增）

| 概念 | 状态 | 学习日期 | 笔记 |
|------|------|----------|------|
| Topic 实体 vs Topic 数据 | ✅ 已掌握 | 2025-12-25 | 实体是"邮箱"，数据是"信件" |
| Topic 的类型和名称 | ✅ 已掌握 | 2025-12-25 | 名称是通道标识，类型定义数据结构 |
| XRCE 协议结构 | ✅ 已掌握 | 2025-12-25 | Session ID、Stream ID、Submessage ID |
| Agent 协议转换 | ✅ 已掌握 | 2025-12-25 | WRITE_DATA → 内部处理 → RTPS DATA |
| QoS 兼容性规则 | ✅ 已掌握 | 2025-12-25 | Publisher QoS >= Subscriber QoS |

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
- [ ] 解决 ShapesDemo 通信问题（XTypes 兼容性）
- [ ] 学习 transport.rst - 传输层配置
- [ ] 学习 gen.rst - 代码生成工具

### 已掌握的技能
- DDS Global Data Space 是逻辑概念，不是实际服务器
- By Reference 方式的设计哲学
- XRCE Client-Agent 架构
- 使用 Wireshark 调试 DDS/RTPS 通信
- DDS 发现机制（Participant Discovery, Endpoint Discovery）
- **ShapesDemo 如何使用 Fast DDS API 创建实体**
- **XRCE Client 三种实体创建模式（XML、Reference、Binary）**
- **QoS 兼容性规则**
- **XRCE 消息结构分析（抓包解读）**
- **Topic 实体 vs Topic 数据的区别**

### 薄弱环节
- QoS 配置的详细参数（Liveliness, Ownership 等）
- RTPS 协议的细节
- XTypes 完整类型系统
- Custom Transport 实现

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
- **总学习天数**: 5
- **总会话数**: 3

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

### 会话 3（2025-12-25）🆕
- **ShapesDemo 源码分析**：确认使用 Qt6 + Fast DDS
- **实体创建机制**：程序化 QoS 配置 vs XML
- **QoS 兼容性**：Publisher >= Subscriber 规则
- **XRCE 三种模式**：XML、Reference、Binary
- **抓包深度分析**：hello_world.pcap 解读
- **核心概念澄清**：
  - Topic 实体（Agent 中的通信通道定义）vs Topic 数据（Client 产生的消息内容）
  - Topic 类型（定义数据结构）vs Topic 名称（标识通道）
  - XRCE 类似 RPC 的工作方式

---

## 🌐 社区资源

- **GitHub Issues**: https://github.com/eProsima/Micro-XRCE-DDS/issues
- **eProsima 论坛**: https://community.eprosima.com/
- **ROS Discourse**: https://discourse.ros.org/

---

*最后更新: 2025-12-25*
