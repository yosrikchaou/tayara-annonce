 
        $(document).ready(function () {
        $("#marque").change(function () {
        
              $.ajax({
                  type: 'get',
                  url:  Routing.generate('modelajx', {id: $("#marque").val()}),
                  beforeSend: function(){
                      
                      $("#model option").remove();
                  },
                  success: function (data) {
                  $.each(data.model,function(index,value){
                       $("#model").append($('<option>',{value:value ,text: value}));
                      
                      
                  });
              }
                
                 
              });
          
            
          
            });
           

        });