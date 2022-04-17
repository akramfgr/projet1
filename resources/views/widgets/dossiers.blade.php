@if(!empty(config('voyager.chartisan_js')))
    @foreach (config("voyager.chartisan_js") AS $js)
        <script type="text/javascript" src="{{asset($js)}}"></script>
    @endforeach    

@endif


<div class=" widget center" style="margin-bottom:0;overflow:hidden;background-color: white">
    <div class="dimmer"></div>
    <div id="chart" style="height: 300px;"></div>
    <div class="panel-content">
        <script>
            const chart = new Chartisan({
                el: '#chart',
                url: "@chart('dossiers')",
                hooks: new ChartisanHooks()
                    .legend({position: 'bottom'})
                    .title('Dossiers Chart')
                    .datasets([{type:'bar',fill: false,}, 'bar']),
            });
        </script>
    </div>
</div>