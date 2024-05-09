
/**
 * 框架读取配置文件类
 * 1. rpcserverip
 * 2. rpcserverport
 * 3. zookeeperip
 * 4. zookeeperport
 * 
*/

#pragma once
#include <unordered_map>

class MprpcConfig
{
public:
  void LoadConfigFile(const char *config_file);
  std::string Load(const std::string &key);
private:
  std::unordered_map<std::string, std::string> m_map;
};