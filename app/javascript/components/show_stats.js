const showStats = () => {
  const stats = document.getElementById('stats-zone');
  document.querySelectorAll('.valid-choice').forEach((choice) => {
    choice.addEventListener("click", (event) => {
      stats.classList.remove("d-none");
    });
  });
}

export { showStats };
