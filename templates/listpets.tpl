{include 'header.tpl'}
<div class= "container">
     <div class="row">
          <div class="col-12">    
                    
               <ul class="list-group">
                    <li class="list-group-item list-group-item-warning" > ULTIMAS MASCOTAS AGREGADAS</li>
               
               <ul class="list-group">  
                    {foreach $pets as $pet}
                                   <li class="list-group-item"> 
                                   {if !($pet->nombre)} 
                                   <p class="h5">Sin Nombre</p>
                                   {/if}
                                   <p class="h5">{$pet->nombre} </p>{$pet->nombre_ciudad}
                                   </li>
                    {/foreach}
               </ul>
          </div>
     </div>
</div>