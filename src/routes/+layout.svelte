<script>
	import './layout.css';
	import favicon from '$lib/assets/OIP-209869077.jpg';

	let { children } = $props();
</script>

<svelte:head><link rel="icon" href={favicon} /></svelte:head>
{@render children()}
