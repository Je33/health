$(function(){
    if($('#img_slider').get(0)){
        window.myFlux = new flux.slider('#img_slider',{
            transitions: ['tiles3d']
        });
    }
    if($('#img_slider_inner').get(0)){
        window.myFlux = new flux.slider('#img_slider_inner',{
            transitions: ['blocks2'],
            autoplay: false,
            pagination: false,
            onTransitionEnd: function(data) {
                var img = data.currentImage;
                // Do something with img...
            }
        });
    }
    

    $('input[placeholder], textarea[placeholder]').placeholder();



    $('.doctors').height(($(".span_33").size() / 3) * 270);

    var el, ul, li, w, ind = 0, m, timer = true;    
    window.slide = function(_el, opt){ 
        var o = $.extend({
            autoplay: true
        }, opt);
        var autoscroll = function(){
            setInterval(function(){if(timer){pp.find('.right_arr').trigger('click')}},5000);   
        }
        if(_el != 'next'){
            if(_el != 'prev'){
                el = $(_el);           
                ul = el.find('ul');
                li = ul.children('li');
                m = parseInt(li.css('margin-right')) > 0 ? parseInt(li.css('margin-right')) : 0;
                w = el.width();
                li.width(w);
                ul.width( (li.size()*w) + (m*li.size()));  
                pp = el.parent();
                pp.mouseenter(function(){
                    $(this).find('.left_arr').show();
                    $(this).find('.right_arr').show();
                    timer = false;
                });  
                pp.mouseleave(function(){
                    $(this).find('.left_arr').hide();
                    $(this).find('.right_arr').hide();
                    timer = true;
                });
                if(o.autoplay){
                    autoscroll();  
                }
                
            }      
        }  
        function anim (pos){   
            ul.stop().animate({marginLeft: (-1)*(pos*(w+m))},300);
        }  
        if(_el == 'next'){
            if(ind + 1 > li.size() -1){
                ind = 0;
            }else{
                ind = ind + 1;   
            }            
            anim(ind);
        }
        if(_el == 'prev'){

            if(ind - 1 < 0){
                ind = li.size() -1;
            }else{
                ind = ind - 1;      
            } 
            
            anim(ind);
        }
    } 
    if($('.block_slider').get(0)){
        window.slide('.block_slider');   
    }
    

    var t = 0;
    var l = 0;  
    var flipped;    
    $(".span_33").each(function(i, n){
        if((((i+1)%3)/10) == 0){           
            $(n)
                .css({
                    position: 'absolute',
                    top: t,
                    right: 0
                })
            t = t + 276;
            l = 0;    
        }else{
            
            $(n)
                .css({
                    position: 'absolute',
                    top: t,
                    left: l
                }) 
            l = l + 332;         
        }   
        $(n).find('.front').bind('click', function(){
            var _el = $(this).parent();
            var front = $(this);
            var back = _el.find('.back');
            if(!_el.hasClass('flipped')){
                if($('.flipped').get(0)){
                    $('.flipped').each(function(){
                        var _t = $(this);
                        _t.find('.back').fadeOut(100, function(){
                            _t.find('.front').fadeIn(100);    
                        });
                        _t.animate({width: 269, 'z-index': 1 },100, function(){
                            _t.removeClass('flipped');
                        });    
                    });
                    
                }
                _el.css('z-index', 100);
                _el.toggleClass('flipped');
                var flipped = _el.hasClass('flipped');
                if(flipped){
                    front.fadeOut(250, function(){
                        back.fadeIn(300);    
                    }); 
                }else{
                    front.fadeIn(300, function(){
                        back.fadeOut(300);    
                    }); 
                    
                } 
                _el.animate({width: flipped ? 602 : 269, 'z-index': flipped ? 100 : 1 },300, function(){
                    if($(this).hasClass('slide_active') == false){
                        window.slide($(this).find('.block_slider_doctor'), {autoplay:true});
                        $(this).addClass('slide_active');
                    }      
                });  
            }   
        });
    });
    $('.slide_back').bind('mousedown', function(){
        var _t = $(this).parents('.flipped');
        _t.find('.back').fadeOut(300, function(){
            _t.find('.front').fadeIn(100);    
        });
        _t.stop().animate({width: 269, 'z-index': 1 },100, function(){
            _t.removeClass('flipped');
        });     
    });
        
        
    
    $('.slide_block_name').bind('click', function(){
        var p =  $(this).parent()
        if(p.hasClass('open') == true){
            p.removeClass('open');
            if(p.children('.slide_block_inner').size(0)){
                p.children('.slide_block_inner').slideUp(300)
            }else{
                p.children('ul').slideUp(300);
            }

        }else{
            p.addClass('open');
            if(p.children('.slide_block_inner').size(0)){
                p.children('.slide_block_inner').slideDown(300);
            }else{
                p.children('ul').slideDown(300);
            }
        }
    });
    if($('.info_page_670').get(0)){
        var s7 = $('.span_70:first').height();
        var s3 = $('.span_30:first').height();
        if(s7 > s3){
            $('.span_30').removeClass('info_page_670');
            $('.span_30').css('height', s7);   
        }else{
            $('.span_70').removeClass('info_page_670');
            $('.span_70').css('height', s3);       
        }
    }
});