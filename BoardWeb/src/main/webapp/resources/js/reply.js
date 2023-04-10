/**
 * reply.js
 */
console.log("start");

var replyService = (function () {
    var sum = function(a,b){
        return a+b;
    };

    //등록
    function add(reply={rno:10, bno:300, reply:'댓글내용', replyer:'user01'},callback){
        $.ajax({
            type:'post',
            url:'/replies/new',
            data: JSON.stringify(reply), // {"rno":10,"bno":300,"reply":"댓글내용",....}
            contentType:'application/json',
            success: function(result){
                if(callback){
                    //callback(result);
                    callback(result);//callback함수의 매개값으로 result를 사용
                }
            },
            error: function(reject){
                console.log(reject);
            }
        })
    }// end of 등록

    //글번호 -> 댓글정보 보여줌
    function getList(param={}, callback, error){
        //param = {bno:300}
        var bno = param.bno;
        var page = param.page;
        $.getJSON('/replies/pages/' + bno + '/' + page + '.json', function(data){
            if(callback){
                // console.log(data)
                callback(data);
            }
        }).fail(function (err){
            if(error){
                //console.error(err);
                error(err);
            }
        });
    }

    //삭제
    function remove(rno, callback, error){
        $.ajax({
            method: 'delete',
            url: '/replies/' + rno,
            success: function(result){
                if(callback){
                    callback(result);
                }
            },
            error: function(reject){
                if(error){
                    error(reject);
                }
            }
        })
    }// end of remove

    //수정
    function update(reply={}, callback, error){
        $.ajax({
            type:'put',
            url:'/replies/'+ reply.rno,
            data: JSON.stringify(reply),
            contentType: 'application/json;charset=UTF-8',
            success: function(result){
                if(callback){
                    callback(result);
                }
            },
            error: function(reject){
                if(error){
                    error(reject);
                }
            }
        })
    }//end of update

    //단건조회
    function get(rno, callback, error){
        $.get('/replies/'+ rno+ '.json', function(result){
            if(callback){
                callback(result);
            }
        }).fail(function(reject){
            if(error){
                error(reject);
            }
        })
    }

    //날짜표시
    function displayTime(timeValue){
        //현재시간을 기준으로 24시간 지난 데이터는 날짜만 보여줌
        //24시간 이내 데이터는 시간으로 보여줌
        var today = new Date();
        var gap = today.getTime() - timeValue; // 168054582300 원래 가지고 있던 시간정보
        var dateObj = new Date(timeValue); //getFullYear, getMonth
        if(gap < (1000 * 60 * 60 * 24)){
            var hh = dateObj.getHours();
            var mm = dateObj.getMinutes();
            var ss = dateObj.getSeconds();
            //14:23:17
            return [(hh>9?'':'0')+hh, ':' ,(mm>9?'':'0')+mm, ':' ,(ss>9?'':'0')+ss].join(''); //배열값 -> 문자열
        }else{
            var yy = dateObj.getFullYear();
            var mm = dateObj.getMonth()+1;
            var dd = dateObj.getDate();
            return [yy,'/', (mm>9?'':'0')+mm, '/', (dd>9?'':'0')+dd].join('');
        }
    }

    return {sum : sum, add : add, getList : getList, remove : remove, get : get, displayTime:displayTime, update:update}

})();//즉각실행함수



// var reply = {bno: 300, reply:'ajax통한 댓글', replyer:'user00'}
// replyService.add(reply, function (result){
//     alert("Result:" + result)
// });