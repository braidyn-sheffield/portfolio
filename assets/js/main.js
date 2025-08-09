
// Minimal enhancements
function filterProjects() {
  const q = (document.getElementById('projectSearch').value || '').toLowerCase();
  const cards = document.querySelectorAll('.project-card');
  cards.forEach(c => {
    const tags = (c.getAttribute('data-tags') || '').toLowerCase();
    const text = c.innerText.toLowerCase();
    c.style.display = (tags.includes(q) || text.includes(q)) ? '' : 'none';
  });
}
