<script>
	import './layout.css';
	import favicon from '$lib/assets/OIP-209869077.svg';

	let { children } = $props();
</script>

<svelte:head><link rel="icon" href={favicon} /></svelte:head>
{@render children()}
