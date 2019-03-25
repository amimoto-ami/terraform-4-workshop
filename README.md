# AMIMOTO for Workshop

ワークショップでAMIMOTO使いたい時にお使いください。

## 立ち上がるAMIMOTO
WooCommerce powered by AMIMOTO
https://aws.amazon.com/marketplace/pp/B01DCGKFMQ

## 使い方

```
$ terraform apply
var.default_security_group_id
  Enter a value: sg-0489053845ad8e812

var.instance_number
  Enter a value: 1

var.key_name
  Enter a value: my-ssk-key
```

ワークショップが終わったら忘れずに削除しましょう。

```
$ terraform destroy
```