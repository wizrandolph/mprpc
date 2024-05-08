#pragma once

// mprpc 框架的基础类
class MprpcApplication
{
public:
  static void Init(int argc, char ** argv);
  static MprpcApplication& GetInstance();
  {
    static MprpcApplication app;
    return app;
  }
private: 
  MprpcApplication(); // 单例模式下的构造函数
  MprpcApplication(const MprpcApplication&) = delete;
  MprpcApplication(MprpcApplication&&) = delete;
};