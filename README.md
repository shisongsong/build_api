# 学生选课查询系统API

现有一个学生选课系统的后台API需要你来实现模型关系如下

1. Model 分为学生老师课程三种所有的模型都只有 id 和 name 两个属性关联字段除外

2. 学生与老师学生与课程均为多对多关系N to N

3. 一名老师能带多门选修课但同一门选修课只会由一名老师来带1 to N

请用 Rails5 的 API 模式实现上述模型的关联关系并实现以下接口

1. `GET /students/:id`以Json返回该名学生的所有课程与对应代课老师的信息

2. `GET /teachers`以Json返回所有的老师及其所带课程的信息

3. `DELETE /teachers/:id`删除该老师与所带课程的全部信息

## 要求

1. 在seeds.rb中写入验证功能所需的测试数据

2. 功能完整正确

3. 代码尽量简洁不包含无用代码

4. 程序架构清晰

5. 题中未作要求的部分请自由设计

## Usage

* `bundle install`
* `rake db.migrate`
* `rake db.seed`
* `rails server`
* 返回该名学生的所有课程与对应代课老师的信息：`curl -i http://localhost:3000/api/v1/students/1`
* 返回所有的老师及其所带课程的信息：`curl -i http://localhost:3000/api/v1/teachers`
* 删除该老师与所带课程的全部信息：`curl -i -X DELETE http://localhost:3000/api/v1/teachers/1`
