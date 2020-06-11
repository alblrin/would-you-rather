const categoryFilter = () => {
  const allChoices = document.querySelectorAll('.choice-card');
  document.querySelectorAll('.category-filter').forEach((filter) => {
    const category = filter.dataset.category;
    const categoryChoices = document.querySelectorAll(`.${category}-filter`);
    filter.addEventListener("click", (event) => {
      allChoices.forEach(choice => choice.classList.add('d-none'));
      categoryChoices.forEach(choice => choice.classList.remove('d-none'));
    });
  });
}

export { categoryFilter };
