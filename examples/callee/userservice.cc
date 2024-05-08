#include <iostream>
#include <string>
#include "user.pb.h"
#include "mprpcapplication.h"
#include "rpcprovider.h"

/*
UserService 是一个本地服务，提供了两个进程内的本地方法，Login 和 GetFriendLists
*/
class UserService : public UserServiceRpc
{
public:
  bool Login(std::string name, std::string pwd)
  {
    std::cout << "doing local servie: Login" << std::endl;
    std::cout << "name: " << name << " pwd: " << pwd << std::endl;
    return true;
  }

  // 这是在调用框架。
  /*
  1. caller ===> Login(LoginRequest) ===> 序列化 ===> 反序列化 ===> callee
  2. callee ===> Login(LoginRequest) ===> 开始调用下列重写方法
  */
  void Login(
      ::google::protobuf::RpcController *controller,
      const ::fixbug::LoginRequest *request,
      ::fixbug::LoginResponse *response,
      ::google::protobuf::Closure *done)
  {
    // 解析参数
    std::string name = request->name();
    std::string pwd = request->pwd();

    // 做本地业务
    bool login_result = Login(name, pwd);

    // 编写响应
    response->set_success(login_result);
    if (login_result)
    {
      response->mutable_result()->set_errcode(0);
      response->mutable_result()->set_errmsg("success");
    }
    else
    {
      response->mutable_result()->set_errcode(1);
      response->mutable_result()->set_errmsg("failed");
    }

    // 执行回调操作，执行响应对象数据的序列化和网络发送
    done->Run();
  }
};

int main(int argc, char **argv)
{
  // 初始化框架
  MprpcApplication::Init(argc, argv);

  // 发布服务
  RpcProvider provider;
  provider.NotifyService(new UserService());

  // 启动一个rpc服务节点
  provider.Run(); // 启动运行后，进程会被阻塞，等待远程的rpc调用

  return 0;

}


