const allFilter = () => {
  const allChoices = document.querySelectorAll('.choice-card');
    document.getElementById('all-filter').addEventListener("click", (event) => {
    allChoices.forEach(choice => choice.classList.remove('d-none'));
  });
}

export { allFilter };
