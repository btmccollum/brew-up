import React from 'react'
import { FormControl, FormHelperText, InputLabel, Input, Button } from '@material-ui/core'

export default function SearchBar() {
  const [query, setQuery] = React.useState('');

  function handleChange(event) {
    setQuery(event.target.value);
  }

  function handleClick() {
    console.log(query)
  }

  return(
    <div className="search-bar-container">
      <form>
        <FormControl>
          <InputLabel htmlFor="query">Enter a state...</InputLabel>
          <Input name="query-field" value={query} onChange={handleChange} aria-describedby="my-helper-text" />
          <FormHelperText id="search-helper-text">Let's get you started.</FormHelperText>
        </FormControl>
      </form>

      {/* NOTE: added for state exposure testing */}
      {/* <Button onClick={handleClick}>
        Show me the state!
      </Button> */}
    </div>
  )
}