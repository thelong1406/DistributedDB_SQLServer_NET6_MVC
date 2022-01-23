// Set new default font family and font color to mimic Bootstrap's default styling
(Chart.defaults.global.defaultFontFamily = 'Nunito'),
  '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// Pie Chart Example
var ctx = document.getElementById('myPieChart');
var d1 = document.getElementById('myPieChart-p1');
var d2 = document.getElementById('myPieChart-p2');
var d3 = document.getElementById('myPieChart-p3');
var total =
  d1.getAttribute('value') +
  d2.getAttribute('value') +
  d3.getAttribute('value');
var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: [
      d1.getAttribute('title'),
      d2.getAttribute('title'),
      d3.getAttribute('title'),
    ],
    datasets: [
      {
        data: [
          (d1.getAttribute('value') / total) * 100,
          (d2.getAttribute('value') / total) * 100,
          (d3.getAttribute('value') / total) * 100,
        ],
        backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
        hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
        hoverBorderColor: 'rgba(234, 236, 244, 1)',
      },
    ],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: 'rgb(255,255,255)',
      bodyFontColor: '#858796',
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false,
    },
    cutoutPercentage: 80,
  },
});
