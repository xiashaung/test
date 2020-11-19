<?php


namespace App\Http\Controllers;


use App\Models\Test;
use Illuminate\Http\Request;

class TestController  extends  Controller
{
    /**
     * 输入参数 name sring 姓名 不能为空
     * 输入参数 content string 内容 不能为空
     *
     * @param \Illuminate\Http\Request $request
     */
    public function  create(Request $request)
    {
       $valiate = [
           'name' => 'required',
           'content' => 'required',
       ];
       $message = [
           'name.required' => '请输入姓名',
           'content.required' => '请输入内容',
       ];
       $this->validate($request,$valiate,$message);
       $status = Test::create($request->all());
       if ($status){
           return response(['status'=>1,'msg'=>'成功']);
       }
        return response(['status' => 0, 'msg' => '创建失败']);
    }


    /**
     * 输入参数 per_page int 每页数量 默认10
     * 输入参数 last_id int 本次请求接口返回的最后一个id 0
     *
     * 输出参数
     * {
     * "list": [ //列表
     * {
     * "id": 2,
     * "name": "11111",
     * "content": "222222",
     * "create_time": "2020-11-19 04:45:07",
     * "update_time": "2020-11-19 04:45:07"
     * },
     * {
     * "id": 1,
     * "name": "11111",
     * "content": "222222",
     * "create_time": "2020-11-19 04:44:02",
     * "update_time": "2020-11-19 04:44:02"
     * }
     * ],
     * "page": 3, //当前页数
     * "last_page": 3,//总的页数
     * "last_id": 2 //最后一个id 下次请求接口时带上
     * }
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\Response
     */
    public function list(Request $request)
    {
        $perPage = $request->input('per_page',10);
        $lastId = $request->input('last_id',0);
         $where = [];
         if ($lastId){
             $where[] = ['id','>',$lastId];
         }
        /**
         * @var $list \Illuminate\Pagination\LengthAwarePaginator
         */
         $list = Test::where($where)->orderBy('create_time','desc')->paginate($perPage);
         $lastId = $list->getCollection()->first()['id'];
         if (!$lastId){
             $lastId = Test::orderBy('create_time', 'desc')->value('id') ?? 0;
         }
         $data = [
             'list' => $list->getCollection()->toArray(),
             'page' => $list->currentPage(),
             'last_page' => $list->lastPage(),
             'last_id' => $lastId,
         ];
         return response($data);

    }
}
