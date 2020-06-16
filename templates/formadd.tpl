{include 'header.tpl'}

<div class="container">
    <div class="row">
        <div class="col-12">
            <p class="text-center bg-light text-dark">

            </p>
            <form action="add" method="post" class="my-4">
                <div class="form-group">
                    <label>Nombre </label>
                    <input type="text" name="name">

                    <label>Edad</label>
                    <input type="number" name="age">
                    <label>Estado</label>
                    <input type="text" name="condition">   
                </div>
                <div class="form-group">
                    <label>Ciudad</label>
                    <select name="city">
                    {foreach $ciudades as $ciudad}
                    <option value="{$ciudad->id_ciudad}">{$ciudad->nombre_ciudad}</option>
                    {/foreach}
                </select>   
                <button type="submit" class="btn btn-primary">Agregar</button>
                </div>
               
                {if $error}
                <div class="alert alert-danger">
                    {$error}
                </div>
                {/if}

            </form>
        </div>
    </div>
</div>