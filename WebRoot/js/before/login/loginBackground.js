 window.onload = function(){
        var config = {
            vx: 4,
            vy:  4,
            height:3,
            width: 3,
            count: 100,
            color: "56,153,255",
            stroke: "100,200,180",
            dist: 6000,
            e_dist: 20000,
            max_conn: 10
        }
        CanvasParticle(config);
    }
    document.onkeydown=function(event){
        var e = event || window.event || arguments.callee.caller.arguments[0];
        if(e && e.keyCode==13){ // enter ¼ü
            document.getElementById("form").submit();
        }
    };