
    //JavaScript��������
    layui.use('element', function(){
        var element = layui.element;
 
    });
    var isShow = true;  //����һ����־λ
    $('.kit-side-fold').click(function(){
        //ѡ������е�span�����ж��ǲ���hidden
        $('.layui-nav-item span').each(function(){
            if($(this).is(':hidden')){
                $(this).show();
            }else{
                $(this).hide();
            }
        });
        //�ж�isshow��״̬
        if(isShow){
            $('.layui-side.layui-bg-black').width(60); //���ÿ��
            $('.kit-side-fold i').css('margin-right', '70%');  //�޸�ͼ���λ��
            //��footer��body�Ŀ���޸�
            $('.layui-body').css('left', 60+'px');
            $('.layui-footer').css('left', 60+'px');
            //����������������
            $('dd span').each(function(){
                $(this).hide();
            });
            //�޸ı�־λ
            isShow =false;
        }else{
            $('.layui-side.layui-bg-black').width(200);
            $('.kit-side-fold i').css('margin-right', '10%');
            $('.layui-body').css('left', 200+'px');
            $('.layui-footer').css('left', 200+'px');
            $('dd span').each(function(){
                $(this).show();
            });
            isShow =true;
        }
    });


