const ctx = document.getElementById('solanaChart').getContext('2d');

const data = {
    labels: ['Speed', 'Cost Efficiency', 'Scalability'],
    datasets: [{
        label: 'Solana Metrics',
        data: [90, 85, 95], // Hypothetical values
        backgroundColor: ['#20BB9A', '#20BB9A', '#20BB9A'], // Solana color
        borderColor: ['#FFF', '#FFF', '#FFF'],
        borderWidth: 1
    }]
};

const config = {
    type: 'bar',
    data: data,
    options: {
        scales: {
            y: {
                beginAtZero: true,
                max: 100
            }
        }
    }
};

new Chart(ctx, config);
