@extends('Layouts.layout')
@section('lang') {{redirect_lang()}} @stop
@section('content')

<!-------------------------->
<!-----------SOURCSE----------->
<!-------------------------->
{{auth()->guard('admin')->check()}}
{{app()->getLocale()}}
<div class="backtop" BACKTOP style="width: 50px; height: 50px; background: red; position: fixed; bottom: 30px; right: 30px; display: none">Top</div>

<script>
    $(document).ready(function(){

        const back = $('[BACKTOP]');
        const body = $('html,body');
        $(window).scroll(function (){
           if($(this).scrollTop() > 100){
               $(back).fadeIn();
           }else{
               $(back).fadeOut();
           }
        });
        $(back).click(function (){
           $(body).animate({scrollTop:0},100);
        });
    })
</script>
<style >
    .products{
       display: none;
    }
</style>
<!-------------------------->
<!-----------SOURCSE----------->
<!-------------------------->
@stop
