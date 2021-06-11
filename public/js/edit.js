const editPostHandler = async (event) => {
  event.preventDefault();

  const { id } = event.target.dataset;

  const title = document.querySelector('#post-title').value.trim();
  const post_content = document.querySelector('#post-content').value.trim();

  if (title && post_content) {
    const response = await fetch(`/api/posts/${id}`, {
      method: 'PUT',
      body: JSON.stringify({ title, post_content }),
      headers: {
        'Content-Type': 'application/json',
      },
    });

    if (response.ok) {
      document.location.replace('/dashboard');
    } else {
      alert('Failed to edit post');
    }
  }
};

const deletePostHandler = async (event) => {
  const { id } = event.target.dataset;
  
  const response = await fetch(`/api/posts/${id}`, {
    method: 'DELETE',
    headers: {
      'Content-Type': 'application/json',
    },
  });

  console.log(response);
  if (response.ok) {
    document.location.replace('/dashboard');
  } else {
    alert('Failed to delete post');
  }
};

document
  .querySelector('#edit-post-btn')
  .addEventListener('click', editPostHandler);

document
  .querySelector('#delete-post-btn')
  .addEventListener('click', deletePostHandler);
