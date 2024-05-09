#include "mprpcconfig.h"
#include <iostream>
#include <string>

void MprpcConfig::LoadConfigFile(const char* config_file) 
{
  FILE *pf = fopen(config_file, "r");
  if (nullptr == pf) {
    std::cout << config_file << " does not exist!" << std::endl;
    exit(EXIT_FAILURE);
  } 

  // 1. 去除开头多余空格  2. 正确的配置项  3. 注释
  while (!feof(pf)) {
    char buf[512] = {0};
    fgets(buf, 512, pf);  // 读取一行
     
    // 1. 去除多余的空格
    std::string src_buf(buf);
    int idx = src_buf.find_first_not_of(' ');
    if (-1 != idx) {
      src_buf = src_buf.substr(idx, src_buf.size() - idx);
    }
    idx = src_buf.find_last_not_of(' ');  // 从后往前找的第一个字符
    if (-1 != idx) {
      src_buf = src_buf.substr(0, idx + 1);
    }

    // 2. 去除注释
    if (src_buf[0] == '#' || src_buf.empty()) {
      continue;
    }

    // 3. 解析配置项
    idx = src_buf.find('=');
    if (idx == -1) {
      continue;
    }
    std::string key;
    std::string value;
    key = src_buf.substr(0, idx);
    value = src_buf.substr(idx + 1, src_buf.size() - 1);
    m_map[key] = value;
  }
}

std::string MprpcConfig::Load(const std::string& key) 
{
  auto it = m_map.find(key);
  if (it == m_map.end()) {
    return "";
  }
  return it->second;
}