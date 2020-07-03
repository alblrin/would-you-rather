const allFilter = () => {
  const allChoices = document.querySelectorAll('.choice-card');
  const filter = document.getElementById('all-filter');
  if (filter) {
    filter.addEventListener("click", (event) => {
    allChoices.forEach(choice => choice.classList.remove('d-none'));
    });
  }
}

export { allFilter };
