import Chart from 'chart.js';

const answerChart = () => {
  const ctx = document.getElementById('answerChart');
  if (ctx) {
    const firstAnswers = 100 - parseInt(ctx.dataset.answers * 100, 10);
    const secondAnswers = firstAnswers - 100;
    window.myChart = new Chart(ctx, {
    type: 'horizontalBar',
    data: {
        labels: ['Réponse 1', 'Réponse 2'],
        datasets: [{
            data: [firstAnswers, secondAnswers],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
                display: false
            },
        scales: {
            xAxes: [{
                display: false,
                ticks: {
                    min: -100,
                    max: 100,
                    stepSize: 20
                }
                }],
            yAxes: [{
                display: false,
                ticks: {
                    beginAtZero: true
                }
            }]
        }
      }
    });
  }
}

export { answerChart };
