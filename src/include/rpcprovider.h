#pragma once
#include "google/protobuf/service.h"

/*
框架中专门负责 服务发布 的网络对象类
*/

class RpcProvider
{
public:
  // 框架向外提供的用来发布RPC服务的函数接口
  void NotifyService(::google::protobuf::Service *service);
  // 启动rpc服务节点，提供rpc远程网络调用服务
  void Run();
};