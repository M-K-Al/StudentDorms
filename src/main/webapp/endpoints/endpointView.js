// noinspection JSUnresolvedVariable
let highcharts = Highcharts;

highcharts.chart('t-container', {
    credits: {
        enabled: false
    }, chart: {
        height: "35%", style: {
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
                    .label(Math.round(averageData) + ' °C', 0, 4)
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
        align: 'left', text: 'Temperature', style: {
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
            return `<span class="">${highcharts.dateFormat('%a, %b %d, %H:%M', new Date(this.x))}</span><span
                    class="fill-indigo-500 text-lg"> ● </span><b>${this.y}</b><span> °C</span>`;
        }, positioner: function () {
            return {
                x: 170, y: 12
            };
        }
    }, series: [{
        name: '',
        data: [...Array(288).keys()].map((i) => [1167611400000 + 300000 * i, 90 + Math.floor(Math.random() * 10)])
    }],
});
highcharts.chart('co2-container', {
    credits: {
        enabled: false
    }, chart: {
        height: "35%", style: {
            fontFamily: 'Segoe UI'
        }, events: {
            load: function () {
                const chart = this;

                chart.update({
                    yAxis: {
                        max: (chart.yAxis[0]).dataMax * 2,
                    }
                });

                let sum = 0;
                chart.series[0].options.data.forEach(d => {
                    sum += d[1]
                });
                let averageData = sum / chart.series[0].options.data.length;
                chart.averageData = chart.renderer
                    .label(Math.round(averageData) + ' ppm', 0, 4)
                    .css({
                        color: '#6e6e6e', fontSize: 20, fontWeight: 600
                    }).add();
            }, render: function () {
                const chart = this;
                if (chart.averageData === undefined) return;
                this.averageData.attr({
                    x: chart.chartWidth - 80,
                });
            }
        },
    }, title: {
        align: 'left', text: 'CO2 levels', style: {
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
            return `<span class="">${highcharts.dateFormat('%a, %b %d, %H:%M', new Date(this.x))}</span><span
                    class="fill-indigo-500 text-lg"> ● </span><b>${this.y}</b><span> ppm</span>`;
        }, positioner: function () {
            return {
                x: 130, y: 12
            };
        }
    }, series: [{
        name: '',
        data: [...Array(288).keys()].map((i) => [1167611400000 + 300000 * i, 90 + Math.floor(Math.random() * 10)])
    }],
});
highcharts.chart('rh-container', {
    credits: {
        enabled: false
    }, chart: {
        height: "35%", style: {
            fontFamily: 'Segoe UI'
        }, events: {
            load: function () {
                const chart = this;

                let sum = 0;
                chart.series[0].options.data.forEach(d => {
                    sum += d[1]
                });
                let averageData = sum / chart.series[0].options.data.length;
                chart.averageData = chart.renderer
                    .label(Math.round(averageData) + '%', 0, 4)
                    .css({
                        color: '#6e6e6e', fontSize: 20, fontWeight: 600
                    }).add();
            }, render: function () {
                const chart = this;
                if (chart.averageData === undefined) return;
                this.averageData.attr({
                    x: chart.chartWidth - 50,
                });
            }
        },
    }, title: {
        align: 'left', text: 'Relative humidity', style: {
            fontWeight: '500'
        },
    }, xAxis: {
        type: 'datetime'
    }, yAxis: {
        tickPositions: [0, 50, 100, 150], opposite: true, tickInterval: 200, title: {
            enabled: false
        }, labels: {
            format: '{value}%'
        }
    }, legend: {
        enabled: false
    }, exporting: {
        buttons: false,
    }, tooltip: {
        backgroundColor: 'none', borderWidth: 0, shadow: false, padding: 0, formatter: function () {
            return `<span class="center">${highcharts.dateFormat('%a, %b %d, %H:%M', new Date(this.x))}</span><span
                    class="fill-indigo-500 text-lg"> ● </span><b>${this.y}</b><span>%</span>`;
        }, positioner: function () {
            return {
                x: 170, y: 12
            };
        }
    }, series: [{
        name: '',
        data: [...Array(288).keys()].map((i) => [1167611400000 + 300000 * i, 90 + Math.floor(Math.random() * 10)])
    }],
});
highcharts.chart('l-container', {
    credits: {
        enabled: false
    }, chart: {
        height: "35%", style: {
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
                    .label(Math.round(averageData) + ' lux', 0, 4)
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
        align: 'left', text: 'Illuminance', style: {
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
            return `<span class="">${highcharts.dateFormat('%a, %b %d, %H:%M', new Date(this.x))}</span><span
                    class="fill-indigo-500 text-lg"> ● </span><b>${this.y}</b><span> lux</span>`;
        }, positioner: function () {
            return {
                x: 170, y: 12
            };
        }
    }, series: [{
        name: '',
        data: [...Array(288).keys()].map((i) => [1167611400000 + 300000 * i, 90 + Math.floor(Math.random() * 10)])
    }],
});
highcharts.chart('o-container', {
    credits: {
        enabled: false
    }, chart: {
        height: "35%", style: {
            fontFamily: 'Segoe UI'
        }, events: {
            load: function () {
                const chart = this;

                chart.update({
                    yAxis: {
                        max: (chart.yAxis[0]).dataMax * 2,
                    }
                });

                let sum = 0;
                chart.series[0].options.data.forEach(d => {
                    sum += d[1]
                });
                let averageData = sum / chart.series[0].options.data.length;
                chart.averageData = chart.renderer
                    .label(Math.round(averageData) + ' ppl', 0, 4)
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
        align: 'left', text: 'Occupancy', style: {
            fontWeight: '500'
        },
    }, xAxis: {
        type: 'datetime'
    }, yAxis: {
        opposite: true, tickInterval: 1, title: {
            enabled: false
        },
    }, legend: {
        enabled: false
    }, exporting: {
        buttons: false,
    }, tooltip: {
        backgroundColor: 'none', borderWidth: 0, shadow: false, padding: 0, formatter: function () {
            return `<span class="">${highcharts.dateFormat('%a, %b %d, %H:%M', new Date(this.x))}</span><span
                    class="fill-indigo-500 text-lg"> ● </span><b>${this.y}</b><span> ppl</span>`;
        }, positioner: function () {
            return {
                x: 170, y: 12
            };
        }
    }, series: [{
        name: '',
        data: [...Array(37).keys()].map((i) => [1167611400000 + 300000 * i * 8, Math.floor(Math.random() * 3)])
    }],
});

$(function () {
    $(".range").each(function () {
        const dis = $(this);
        const min = parseFloat(dis.attr("min") ?? 0);
        const max = parseFloat(dis.attr("max") ?? 100);
        const step = parseFloat(dis.attr("step") ?? 1);
        const value = parseFloat(dis.attr("value") ?? (Number.isInteger(step) ? Math.round(min + (max - min) / 2) : min + (max - min) / 2));
        const suffix = dis.attr("suffix") ?? "";
        dis.slider({
            "range": "min",
            "min": min,
            "max": max,
            "value": value,
            "disabled": dis.hasClass("disabled"),
            "step": step,
            "slide": function (event, ui) {
                $(this).find(".ui-slider-handle").children().text(Math.round(ui.value));
            }
        });
        dis.find(".ui-slider-handle").append(`<span class="hidden leading-none rounded-md px-4 py-2.5 text-center text-sm font-semibold slider-popup">${value}</span>`);
        dis.find(".min-range").text(min + suffix);
        dis.find(".max-range").text(max + suffix);
    });


    $(".ui-slider-handle")
        .on("mouseenter", function () {
            const dis = $(this);
            if (!dis.hasClass("ui-state-active") && !dis.parent().slider("option", "disabled")) dis.children().removeClass("hidden");
        }).on("mouseleave", function () {
        const dis = $(this);
        if (!dis.hasClass("ui-state-active")) dis.children().addClass("hidden");
    });

    $(window).on("mouseup", function () {
        $(".ui-slider-handle").trigger("mouseleave");
    });
});
