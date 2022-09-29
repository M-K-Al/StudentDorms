Highcharts.chart('container1', {
    credits: {
        enabled: false
    }, chart: {
        height: "30%", style: {
            fontFamily: 'Segoe UI'
        }, events: {
            load: function () {
                const chart = this;

                chart.update({
                    yAxis: {
                        max: (chart.yAxis[0]).dataMax * 4,
                    }
                });

                let sum = 0;
                chart.series[0].options.data.forEach(d => {
                    sum += d[1]
                });
                let averageData = sum / chart.series[0].options.data.length;
                chart.averageData = chart.renderer
                    .label(Math.round(averageData) + ' ms', 0, 4)
                    .css({
                        color: '#6e6e6e', fontSize: 20, fontWeight: 600
                    }).add();
            }, render: function () {
                const chart = this;
                if (chart.averageData === undefined) return;
                this.averageData.attr({
                    x: chart.chartWidth - 60,
                });
            }
        },
    }, title: {
        align: 'left', text: 'API Response Time', style: {
            fontWeight: '500'
        },
    }, xAxis: {
        type: 'datetime'
    }, yAxis: {
        opposite: true, tickInterval: 200, title: {
            enabled: false
        },
    }, legend: {
        enabled: false
    }, exporting: {
        buttons: false,
    }, tooltip: {
        backgroundColor: 'none', borderWidth: 0, shadow: false, padding: 0, formatter: function () {
            return `<span class="center">${Highcharts.dateFormat('%a, %b %d, %H:%M', new Date(this.x))}</span><span
                    class="fill-indigo-500 text-lg"> ● </span><b>${this.y}</b><span> ms</span>`;
        }, positioner: function () {
            return {
                x: 180, y: 12
            };
        }
    }, series: [{
        name: '',
        data: [...Array(288).keys()].map((i) => [1167611400000 + 300000 * i, 90 + Math.floor(Math.random() * 10)])
    }],
});
Highcharts.chart('container2', {
    credits: {
        enabled: false
    }, chart: {
        height: "30%", style: {
            fontFamily: 'Segoe UI'
        }, events: {
            load: function () {
                const chart = this;

                chart.update({
                    yAxis: {
                        max: (chart.yAxis[0]).dataMax * 4,
                    }
                });

                let sum = 0;
                chart.series[0].options.data.forEach(d => {
                    sum += d[1]
                });
                let averageData = sum / chart.series[0].options.data.length;
                chart.averageData = chart.renderer
                    .label(Math.round(averageData) + ' ms', 0, 4)
                    .css({
                        color: '#6e6e6e', fontSize: 20, fontWeight: 600
                    }).add();
            }, render: function () {
                const chart = this;
                if (chart.averageData === undefined) return;
                this.averageData.attr({
                    x: chart.chartWidth - 60,
                });
            }
        },
    }, title: {
        align: 'left', text: 'API Response Time', style: {
            fontWeight: '500'
        },
    }, xAxis: {
        type: 'datetime'
    }, yAxis: {
        opposite: true, tickInterval: 200, title: {
            enabled: false
        },
    }, legend: {
        enabled: false
    }, exporting: {
        buttons: false,
    }, tooltip: {
        backgroundColor: 'none', borderWidth: 0, shadow: false, padding: 0, formatter: function () {
            return `<span class="">${Highcharts.dateFormat('%a, %b %d, %H:%M', new Date(this.x))}</span><span
                    class="fill-indigo-500 text-lg"> ● </span><b>${this.y}</b><span> ms</span>`;
        }, positioner: function () {
            return {
                x: 180, y: 12
            };
        }
    }, series: [{
        name: '',
        data: [...Array(288).keys()].map((i) => [1167611400000 + 300000 * i, 90 + Math.floor(Math.random() * 10)])
    }],
});