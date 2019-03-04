$(document).ready(function() {    
    $(function() {
        $('#team1').highcharts({
            chart: {
                backgroundColor: '#202126',
                type: 'area'
            },

            title: {
                text: ''
            },
            yAxis: {
                title: {
                    text: '',
                },
                min: 1000,
                max:1300,
                gridLineWidth:1,
                gridLineColor: '#2A2B31',
                labels: {
                    formatter: function() {
                        return this.value;
                    }
                },
            },
            xAxis: {
                visible: false
            },
            tooltip: {
                crosshairs: false,
                shared: true,
                enabled: false,
            },
            credits: {
                enabled: false
            },
            plotOptions: {
                area: {
                    marker: {
                        
                    }
                }
            },
            legend: {
                    enabled: false
                },

            series: [{
                color: '#4996F2',
                lineWidth: 3,
                marker: {
                    symbol: 'url(https://i.imgur.com/OnQr06X.png)',
                    borderColor: '#31A54A',
                    borderWidth: 2

                },
                data: [1100, 1200, 1150, 1130, 1180, 1190, 1140, {
                    y: 1160,
                    marker: {
                        symbol: 'url(https://i.imgur.com/sLWiwPn.png)'
                    }
                }, 1120],
                fillColor: {
                    linearGradient: [0, 0, 0, 2000],
                    stops: [
                        [0, '#191A1E'],
                        [1, '#191A1E']
                    ]
                }
            }]
        });
         $('#team2').highcharts({
            chart: {
                backgroundColor: '#202126',
                type: 'area'
            },

            title: {
                text: ''
            },
            yAxis: {
                title: {
                    text: '',
                },
                min: 1000,
                max:1300,
                gridLineWidth:1,
                gridLineColor: '#2A2B31',
                labels: {
                    formatter: function() {
                        return this.value;
                    }
                },
            },
            xAxis: {
                visible: false
            },
            tooltip: {
                crosshairs: false,
                shared: true,
                enabled: false,
            },
            credits: {
                enabled: false
            },
            plotOptions: {
                area: {
                    marker: {
                        
                    }
                }
            },
            legend: {
                    enabled: false
                },

            series: [{
                color: '#4996F2',
                lineWidth: 3,
                marker: {
                    symbol: 'url(https://i.imgur.com/OnQr06X.png)',

                },
                data: [1100, 1200, 1150, 1130, 1180, 1190, 1140, {
                    y: 1160,
                    marker: {
                        symbol: 'url(https://i.imgur.com/sLWiwPn.png)'
                    }
                }, 1120],
                fillColor: {
                    linearGradient: [0, 0, 0, 2000],
                    stops: [
                        [0, '#191A1E'],
                        [1, '#191A1E']
                    ]
                }
            }]
        });
    });
});