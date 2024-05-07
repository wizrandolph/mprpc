#include "test.pb.h"
using namespace testproto;
using namespace std;

void proto_test_simple() {
  // 创建简单数据类型
  LoginRequest req_send;
  req_send.set_name("wiz");
  req_send.set_pwd("pwd123");

  // 序列化
  string str_send;
  if (req_send.SerializeToString(&str_send)) {
    cout << str_send << endl;
  }

  // 反序列化
  LoginRequest req_recv;
  if (req_recv.ParseFromString(str_send)) {
    cout << req_recv.name() << ", " << req_recv.pwd() << endl;
  }
}

void proto_test_object() {
  // 创建对象类型数据，其成员为一个对象
  LoginResponse rsp;
  ResultCode *rc = rsp.mutable_result();
  rc->set_errcode(1);
  rc->set_errmsg("登陆失败");

  // 对象序列化
  string send_str;
  if (rsp.SerializePartialToString(&send_str)) {
    cout << "序列化成功" << endl;
    cout << send_str << endl;
  }

  // 反序列化
  LoginResponse rsp_recv;
  if (rsp_recv.ParseFromString(send_str)) {
    cout << "反序列化成功";
    cout << rsp_recv.mutable_result()->errcode() << ", " << rsp_recv.mutable_result()->errmsg() << endl;
  }
}

void proto_test_list() {
  GetFriendListResponse rsp;
  ResultCode *rc = rsp.mutable_result();
  rc->set_errcode(0);

  // 列表通过 add 向列表成员中添加数据
  User *user1 = rsp.add_friend_list();
  user1->set_name("zhangsan");
  user1->set_age(10);
  user1->set_uid(0001);
  user1->set_sex(User::MALE);

  // 列表通过 add 向列表成员中添加数据
  User *user2 = rsp.add_friend_list();
  user2->set_name("lisi");
  user2->set_age(12);
  user2->set_uid(0002);
  user2->set_sex(User::FEMALE);

  cout << rsp.friend_list_size() << endl;
}

int main() {
  proto_test_list();
  return 0;
}
