# Subscriber

## 整体设计

- Github Action 负责从订阅链接获取节点，生成正确的配置，并上传到 Gist
- Vercel 负责增加一层额外的缓存，避免 Gist 在国内的访问性问题

## 使用

- `.github`: Github Action 相关的配置，主要需要修改 gist 的地址
- `config`: 自定义的配置，可以根据需求修改
- `profiles`: 提供不同客户端的支持，需要将 `<LinkA>` 等替换成正确的订阅链接，链接之间使用 `|` 分隔
- `snippets`: 提供节点分组的支持，根据需求修改
- `perf.toml`：配置文件，只有 `managed_config_prefix` 需要根据请求调整，注意末尾的 `?/` 用来忽略附加的参数
- `vercel.json`：提供重写支持，根据自己的 gist 和想要的路径修改

以上全部配置完成后可以在 Github Action 提交并执行，检查是否正确生成，最后在各个客户端配置链接即可

## 注意

本项目不提供任何可用的节点，请总是创建自己的 Private Repo 并复制所有文件～
