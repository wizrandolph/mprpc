#pragma once
#include "mprpcconfig.h"

// mprpc 框架的基础类
class MprpcApplication
{
public:
  static void Init(int argc, char ** argv);
  static MprpcApplication& GetInstance();
private: 
  static MprpcConfig m_config;

  MprpcApplication() {}; // 单例模式下的构造函数
  MprpcApplication(const MprpcApplication&) = delete;
  MprpcApplication(MprpcApplication&&) = delete;
};