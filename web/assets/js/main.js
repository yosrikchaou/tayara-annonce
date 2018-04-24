 
        $(document).ready(function () {
            
          $("#marque").change(function () {
   
              $.ajax({
                  type: 'get',
                  url:  Routing.generate('modelajx', {id: $("#marque").val()}),
                  dataType: "JSON",
                  beforeSend: function(){
                      
                      $("#model option").remove();
                  },
                  success: function (data) {
                       $("#model").html('');
                  $.each(data.model,function(key,value){
                       
                 $("#model").append('<option value="' + key+ '">' + value + '</option>');
                   
                      
                  });
                     
              
              }
                
                 
              });
          
            
          
            });
           

        });